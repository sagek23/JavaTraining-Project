import videojs from 'video.js';
import {version as VERSION} from '../package.json';

// Default options for the plugin.
const defaults = {};

// Cross-compatibility for Video.js 5 and 6.
const registerPlugin = videojs.registerPlugin || videojs.plugin;
// const dom = videojs.dom || videojs;

var pipButton = videojs.extend(videojs.ClickableComponent, {
    constructor: function(player, options) {

        videojs.ClickableComponent.call(this, player, options);
        // Bind click event for desktop browsers
        this.on('click', function() {
          let pip = document.getElementById('pipWrap');
          if ( pip.style.display === 'none'){
            pip.style.display = 'block';
          }else{
            pip.style.display ='none';
          }
        });
    },

    createEl: function() {
        return videojs.Button.prototype.createEl.call(this, 'div', {
            className: 'vjs-pip-button vjs-menu-button vjs-menu-button-popup vjs-control vjs-button',
            innerHTML: '<img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACgAAAAeCAYAAABe3VzdAAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA4RpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuNi1jMTM4IDc5LjE1OTgyNCwgMjAxNi8wOS8xNC0wMTowOTowMSAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDozYzYxN2JkZi1jYjAzLWUyNGYtYWQ3Ny04MzgxMTA2MDA5Y2IiIHhtcE1NOkRvY3VtZW50SUQ9InhtcC5kaWQ6NEFBN0M5OTMwRTJEMTFFNzk2RDQ5RUFDMTY4ODE3RTQiIHhtcE1NOkluc3RhbmNlSUQ9InhtcC5paWQ6NEFBN0M5OTIwRTJEMTFFNzk2RDQ5RUFDMTY4ODE3RTQiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENDIDIwMTcgKFdpbmRvd3MpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6MjNlMDRjMDYtMjlkNi1hMjRiLWI2YTYtZDdiYzk2ZGIzNDAwIiBzdFJlZjpkb2N1bWVudElEPSJhZG9iZTpkb2NpZDpwaG90b3Nob3A6Mjc0NmM5ZmUtMGUyZC0xMWU3LWIzZmEtZmQzOWJhM2U3NmZjIi8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+fQKxPQAAAs5JREFUeNq8mMGO0zAQhu3Eaemyy4ETVx6Awz4QT7cPxJUbVw4IhKDbdpPYONKM9O/PTJK2C5Z+xbUS++vM2DNJLKUEahH6jfyO0G9pDJ/Ra6Frlv6kUa44lmHNZ0Ap+K0BtSLu4x/wABUgC9xo9ANBuoCR4BRmuq8TJRhvyZLcMlhNNVT1oihjeH9EK6YZyzHYtmoj0rEGrOkBqpUU6kmk6/TGM6YF0U26sIK9IiloAsBICxUAHADsKGrliqFQgKF4Lo5kvQnopuq1aCdjW3D5HKC69CRAh6o9WD1DKCy62LPeBPam6pYgNwBobZIM1lO4jczPIYD9WUCF7GQyBbwFyBuBVMBIuxldpoAMN0JcDrBp4tIuxp2rgDuAvAMrnmPBjuDUqifp67rjEiBCdgSpsfix6n04r32pegC4A5wILSWAs3bxBmJxJ5rgPlV9Nw7rYBzSb6vu5dleLLclwIYYytwmwfMtAahqar+qfsAcFmAQF3fS39BZmmitZk0MWq5OcOYlONATuMZqBe4NNEdyXLvKxVgcNGTZhhbFCbewEbQd6JnGmduETAuBHR33ee1D1Tsa+yyxetHczcKCxSqBXqitmrtxHiiUfrBk4vJoDXymtJadNf6CTjP/qlCJNEAfD2F02deqR5rrGwAOxnyjB+cBcl4cqEx6knvvZBwD/KfIOgcDzaEpjvOxC1iMMknBsBLpJCvcX5BJDiJMcb1RJMy6GF3bO5XIwwW5WMusR4BEQHa1CzhSkXmcqUTOrWYmuN8CipAcj2HJgpmst3cqkUvqwT1AohXzWgti/PE7B1Yi11bUe4hFKw4XY1BT0BGs0YPlrn0nUfXg4rK0i6NhxUC/Ty/0VneCsdW72HqBxrNxoOr32vfigV7g89KLu1oxz2ycf/FlIXupM63In+jy//Ft5nnJY3w8sj4iRUPBKfWDs/H4fOQNYYL8EWAAkl+v278JtQcAAAAASUVORK5CYII=" style="width: 100%; height: 100%;"><span class="vjs-control-text">PiP Toggle</span></div>'
        }, {
            'aria-live': 'polite',
        });
    }
});
var initPiP = (player, options) => {
  console.log('PiP: starting');

  videojs.registerComponent("pipButton", pipButton);

  var buttonIndex = player.controlBar.children().map(function(c) {
      return c.name();
  }).indexOf('FullscreenToggle') - 1;
  player.controlBar.pipToggle = player.controlBar.addChild('pipButton', null, buttonIndex);
  player.controlBar.pipToggle.el().setAttribute('tabindex', 0);

  let pipWrap = document.createElement('div');
  pipWrap.setAttribute('class', 'pipWrap');
  pipWrap.setAttribute('id', 'pipWrap')
  let swap = document.createElement('div');
  let hide = document.createElement('div');
  hide.setAttribute('id', 'hide');
  hide.innerHTML = "Hide";

  swap.setAttribute('id', 'swap');
  swap.innerHTML = "Swap";
  let p2 = document.createElement('video');
  pipWrap.appendChild(hide);
  pipWrap.appendChild(p2);
  pipWrap.appendChild(swap);
  p2.setAttribute('data-account-id', player.el().dataset.account);
  p2.setAttribute('data-player-id', player.el().dataset.player);
  p2.setAttribute('data-embed', player.el().dataset.embed);
  p2.setAttribute('id', "player2");
  p2.setAttribute('class', "video-js");
  bc(p2, {}, function(err) {
    let pip = this;
    pip.muted(true);
    player.el().parentNode.insertBefore(pipWrap, player.el());
    pip.height(options.pipHeight);
    pip.width(options.pipWidth);
    console.log("PiP: mini player loaded to DOM");

    if (typeof jQuery.ui != 'undefined') {
      $("#pipWrap").draggable({containment: ".vjs-pip", scroll: false});
      console.log("PiP: mini player draggable");

    }
    if (options.bc) {
      console.log("Using VideoCloud Catalog");
      pip.catalog.getVideo(options.vid2, (err, vid) => {
        pip.catalog.load(vid);
      })
      player.catalog.getVideo(options.vid1, (err, vid) => {
        player.catalog.load(vid);
      })
      swap.addEventListener('click', (evt) => {
        console.log("swap Clicked");
        player.pause();
        pip.pause();
        let t = player.currentTime();
        let tPIP = pip.currentTime();

        player.catalog.getVideo(pip.mediainfo.id, (err, vid) => {
          player.catalog.load(vid);
          player.poster(' ');
          player.currentTime(tPIP);
          player.play();
        })
        pip.catalog.getVideo(player.mediainfo.id, (err, vid) => {
          pip.catalog.load(vid);
          pip.poster(' ');
          pip.currentTime(t);
          player.play();
        })
      })
    }else{
      console.log("Using VideoJS and Remote Sources");
      let m3u81;
      let m3u82;
      if( options.vid1.includes('m3u8') ){
        m3u81 =true;
        player.src({ type: "application/x-mpegURL", src:options.vid1});

      }else{
        player.src(options.vid1);
      }
      if( options.vid2.includes('m3u8') ){
        m3u82 = true;
        pip.src({ type: "application/x-mpegURL", src:options.vid2});

      }else{
        pip.src(options.vid2);
      }

      swap.addEventListener('click', (evt) => {

        let src1;
        let src2;
        console.log("swap Clicked");
        player.pause();
        pip.pause();
        let t = player.currentTime();
        let tPIP = pip.currentTime();
        if(m3u81){
           src1 = player.tech_.hls.source_;
        }else{
          src1 = player.tech.src()
        } if (m3u82) {
          src2 = pip.tech_.hls.source_;
        }else{
          src2 = pip.tech.src();
        }
        pip.src(src1);
        pip.currentTime(t);
        player.src(src2);
        player.currentTime(tPIP);
        pip.play();
        player.play();
      })
    }

    player.on('play', (evt) => {
      pip.play();
    })
    player.on('pause', (evt) => {
      pip.pause();
    })



    hide.addEventListener('click', (evt) => {
        pip.toggleClass('vjs-hidden');

    })
  });
}
/**
 * Function to invoke when the player is ready.
 *
 * This is a great place for your plugin to initialize itself. When this
 * function is called, the player will have its DOM and child components
 * in place.
 *
 * @function onPlayerReady
 * @param    {Player} player
 *           A Video.js player object.
 *
 * @param    {Object} [options={}]
 *           A plain object containing options for the plugin.
 */
const onPlayerReady = (player, options) => {
  player.addClass('vjs-pip');
  player.height(options.mainHeight);
  player.width(options.mainWidth);
  initPiP(player, options);

};

/**
 * A video.js plugin.
 *
 * In the plugin function, the value of `this` is a video.js `Player`
 * instance. You cannot rely on the player being in a "ready" state here,
 * depending on how the plugin is invoked. This may or may not be important
 * to you; if not, remove the wait for "ready"!
 *
 * @function pip
 * @param    {Object} [options={}]
 *           An object of options left to the plugin author to define.
 */
const pip = function(options) {
  this.ready(() => {
    onPlayerReady(this, videojs.mergeOptions(defaults, options));
  });
};

// Register the plugin with video.js.
registerPlugin('pip', pip);

// Include the version number.
pip.VERSION = VERSION;

export default pip;
