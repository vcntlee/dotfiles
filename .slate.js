//******** relaunch  ********************************************
var relaunch = slate.operation("relaunch"); 
slate.bind("r:alt", relaunch); 

//******** hide and show  ********************************************
var hide = slate.operation("hide", {
   "app" : "all"
});
slate.bind("h:alt", hide);

var show = slate.operation("show", {
    "app" : "all"
});
slate.bind("s:alt", show);

//******** push right ********************************************
var pushRight = slate.operation("push", {
  "direction" : "right",
  "style" : "bar-resize:screenSizeX/2"
});

slate.bind("right:alt", function(win){
  win.doOperation(pushRight);
});

//********* push left ********************************************
var pushLeft = slate.operation("push", {
  "direction" : "left",
  "style" : "bar-resize:screenSizeX/2"
});

slate.bind("left:alt", function(win) {
  win.doOperation(pushLeft);
});

//********** push top ********************************************
var pushTop = slate.operation("push", {
  "direction" : "top",
  "style" : "bar-resize:screenSizeY/2"
});

slate.bind("up:alt", function(win){
  win.doOperation(pushTop);
});

//********** push bottom ********************************************
var pushBottom = slate.operation("push", {
  "direction" : "bottom", 
  "style" : "bar-resize:screenSizeY/2"
});

slate.bind("down:alt", function(win){
  win.doOperation(pushBottom);
}); 

//********** fullscreen *******************************************
var fullscreen = slate.operation("move", {
  "x" : "screenOriginX",
  "y" : "screenOriginY",
  "width" : "screenSizeX",
  "height" : "screenSizeY"
});

slate.bind("f:alt", function(win) {
  win.doOperation(fullscreen);
});

//********** left_resize ********************************************
var left_resize = slate.operation("resize", {
  "width" : "-5%",
  "height" : "+0%"  
});  

slate.bind("j:alt", left_resize);

//********** right_resize ********************************************
var right_resize = slate.operation("resize", {
  "width" : "+5%", 
  "height" : "+0%"
});  

slate.bind("l:alt", right_resize);

//********** top_resize ********************************************
var top_resize = slate.operation("resize", {
  "width" : "0%", 
  "height" : "-5%"
});  

slate.bind("i:alt", top_resize);

//********** bottom_resize ********************************************
var bottom_resize = slate.operation("resize", {
  "width" : "0%", 
  "height" : "+5%"
});  

slate.bind("k:alt", bottom_resize);

//**********  corners ********************************************
var upper_left = slate.operation("corner", {
    "direction" : "top-left",
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
slate.bind("1:alt", upper_left);

var bottom_left = slate.operation("corner", {
    "direction" : "bottom-left", 
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
slate.bind("2:alt", bottom_left);

var upper_right = slate.operation("corner", {
    "direction" : "top-right", 
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
slate.bind("3:alt", upper_right);

var bottom_right = slate.operation("corner", {
    "direction" : "bottom-right", 
    "width" : "screenSizeX/2",
    "height" : "screenSizeY/2"
});
slate.bind("4:alt", bottom_right);












// Bind A Crazy Function  
//******************************Example************************************

//if (win.title() === "OMG I WANT TO BE FULLSCREEN") {
//    win.doOperation(fullscreen);
//    return;
//  }
//  var appName = win.app().name();
//  if (appName === "iTerm") {
//    win.doOperation(pushRight);
//  } else if (appName === "Google Chrome") {
//    win.doOperation(pushLeft);
// } else {
//    win.doOperation(pushTop);
//  }
//******************************Example************************************








 
