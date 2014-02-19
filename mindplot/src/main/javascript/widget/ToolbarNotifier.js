/*
 *    Copyright [2012] [wisemapping]
 *
 *   Licensed under WiseMapping Public License, Version 1.0 (the "License").
 *   It is basically the Apache License, Version 2.0 (the "License") plus the
 *   "powered by wisemapping" text requirement on every single page;
 *   you may not use this file except in compliance with the License.
 *   You may obtain a copy of the license at
 *
 *       http://www.wisemapping.org/license
 *
 *   Unless required by applicable law or agreed to in writing, software
 *   distributed under the License is distributed on an "AS IS" BASIS,
 *   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *   See the License for the specific language governing permissions and
 *   limitations under the License.
 */

mindplot.widget.ToolbarNotifier = new Class({

    initialize:function () {
    },

    logError:function (userMsg) {
        this.logMessage(userMsg, mindplot.widget.ToolbarNotifier.MsgKind.ERROR);
    },

    hide:function () {

    },

    logMessage:function (msg, fade) {
        $assert(msg, 'msg can not be null');

        var container = $('#headerNotifier');

        // In case of print,embedded no message is displayed ....
        if (container) {
            container.set('text', msg);
            container.setStyle('display', 'block');
            container.position({
                relativeTo:document.id('header'),
                position:'upperCenter',
                edge:'centerTop'
            });

            if (!$defined(fade) || fade) {
                this._effect = container.fadeIn('slow');
            } else {
                this._effect = container.fadeIn(0);
            }
        }
    }

});

mindplot.widget.ToolbarNotifier.MsgKind = {
    INFO:1,
    WARNING:2,
    ERROR:3,
    FATAL:4
};

var toolbarNotifier = new mindplot.widget.ToolbarNotifier();
$notify = toolbarNotifier.logMessage.bind(toolbarNotifier);