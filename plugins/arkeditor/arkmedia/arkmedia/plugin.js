var jGetEditorSelectedElement=!1,jGetEditorSelectedText=!1,jGetEditorSelectedImage=!1,jGetEditorSelectedLink=!1;(function(){function u(n,t){var i=n.getSelection();return element=i&&i.getSelectedElement()||null,element&&element.is(t)&&!element.isReadOnly()?element:!1}function e(n){return u(n,"audio")}function o(n){return u(n,"video")}function t(n){var t=n.getSelectedWidget()||null;return t?t.data.hasCaption||t.data.align=="center"?(t.parts.image.data("cke-align",t.data.align!="none"&&t.data.align||""),!t.data.hasCaption)?t.parts.image:t.element:(t.element.data("cke-align",t.data.align!="none"&&t.data.align||""),t.element):!1}function f(n,t){var r=[],i;if(t)for(i in t)r.push(i+"="+encodeURIComponent(t[i]));else return n;return n+(n.indexOf("?")!=-1?"&":"?")+r.join("&")}var i,n,r;jGetEditorSelectedAudio=function(n){var t=CKEDITOR.instances[n];return t?(element=e(t))?element.$:!1:!1};jGetEditorSelectedVideo=function(n){var t=CKEDITOR.instances[n];return t?(element=o(t))?element.$:!1:!1};jGetEditorSelectedImage=function(n){var i=CKEDITOR.instances[n];return i?(element=t(i))?element.$:!1:!1};i=function(n){var t=n.getSelectedWidget()||null;return t&&(t.inline?!t.wrapper.getAscendant("a"):1)?t.parts.link:CKEDITOR.plugins.link.getSelectedLink(n)||!1};jGetEditorSelectedLink=function(n){var t=CKEDITOR.instances[n];return t?(element=i(t))?element.$:!1:!1};jGetEditorSelectedElement=function(n){var i=CKEDITOR.instances[n];return i?(element=CKEDITOR.plugins.link.getSelectedLink(i))?element.$:(element=t(i))?element.$:!1:!1};jGetEditorSelectedText=function(n){var t=CKEDITOR.instances[n];return t?t.getSelection().getSelectedText():!1};n="arkimage";r=/(?:[^\/])\/(([^\u0000-\u007F]|[\w-])+\.(?!(?:htm|php|asp|jsp|cfm|pl|cgi))\w+)$/;CKEDITOR.plugins.add("arkmedia",{requires:"image,document",icons:"image",hidpi:!0,init:function(u){var s,o,e,h;if(u.config.arkMediaEnabled){CKEDITOR.plugins.link.getSelectedLink2=i;imageManagerCmd={url:u.config.base+"index.php?option=com_arkmedia",exec:function(n){var h=n.config.filebrowserImageWindowWidth||n.config.filebrowserWindowWidth||"100%",c=n.config.filebrowserImageWindowHeight||n.config.filebrowserWindowHeight||(CKEDITOR.env.gecko?"92%":"100%"),i={stack:"images",stacklock:1},r,e,u,o,s;i.stacks="images";i.tmpl="component";i.editor="CKEDITOR";i.editorname=n.name;i.langCode||(i.language=n.langCode);i.edit=0;r=t(n);r&&(r.is("figure")?(u=r.findOne("img"),e=u.getAttribute("src").replace(n.config.base,""),i.edit=e):(u=r.is("a")?r.findOne("img"):r,e=u.getAttribute("src").replace(n.config.base,""),i.edit=e));o=f(this.url,i);s=function(n){n.cancel()};n.editable().once("blur",s,null,null,-100);n.popup(o,h,c)}};s={url:u.config.base+"index.php?option=com_arkmedia",exec:function(n){var o=n.config.filebrowserWindowWidth||"80%",s=n.config.filebrowserWindowHeight||(CKEDITOR.env.gecko?"77%":"85%"),t={},i=0,r=CKEDITOR.plugins.link.getSelectedLink2(n),t={stacklock:1,stack:"documents",stacks:"documents"},u,e;r&&(i=r.getAttribute("href").replace(n.config.base,""));t.tmpl="component";t.editor="CKEDITOR";t.editorname=n.name;t.edit=i;t.langCode||(t.language=n.langCode);u=f(this.url,t);e=function(n){n.cancel()};n.editable().once("blur",e,null,null,-100);n.popup(u,o,s)}};o=u.addCommand(n,imageManagerCmd);o.modes={wysiwyg:1};u.widgets.onWidget("image","ready",function(){this.on("doubleclick",function(){return u.elementMode==CKEDITOR.ELEMENT_MODE_INLINE&&(u.widgets.selectedWidget=this),u.execCommand(n),!1},null,null,4)});e="arkmedia2";h=u.addCommand(e,s);o.modes={wysiwyg:1};u.ui.addButton&&u.ui.addButton("Document",{label:u.lang.document.toolbar,command:e});u.on("doubleclick",function(n){var t=CKEDITOR.plugins.link.getSelectedLink2(u)||n.data.element;if(!t.isReadOnly())if(t.is("a")){if(t.getAttribute("name")||!t.getAttribute("href")&&t.getChildCount())t.getAttribute("name")&&(!t.getAttribute("href")||t.getChildCount())&&(n.data.dialog="anchor");else if(r.test(t.getAttribute("href")))return setTimeout(function(){u.execCommand(e)},0),!1}else CKEDITOR.plugins.link.tryRestoreFakeAnchor(u,t)&&(n.data.dialog="anchor")},null,null,4);u.removeMenuItem&&u.removeMenuItem("document");u.addMenuItems&&u.addMenuItems({document:{label:u.lang.document.menu,command:e,group:"link",order:1}})}},afterInit:function(t){if(t.config.arkMediaEnabled){t.removeMenuItem&&t.removeMenuItem("image");t.addMenuItems&&t.addMenuItems({image:{label:t.lang.image.menu,command:n,group:"image"}});t.ui.addButton&&t.ui.addButton("Image",{label:t.lang.common.image,command:n});t.on("blur",function(){t.elementMode==CKEDITOR.ELEMENT_MODE_INLINE&&(t.widgets.selectedWidget=null)});t.widgets.on("instanceCreated",function(n){var t=n.data;if(t.inline)t.on("contextMenu",function(n){n.data.image=CKEDITOR.TRISTATE_OFF;var t=this.parts.link||this.wrapper.getAscendant("a");t&&r.test(t.getAttribute("href"))&&(n.data.document=CKEDITOR.TRISTATE_OFF)})})}}})})()