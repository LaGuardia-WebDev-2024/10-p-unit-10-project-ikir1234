setup = function() {
    size(400, 600); 
    background(190,198,240);
    
    for (var c = -25; c < 400; c += 200){
      drawCloud(c, 130);
    
    
    for(var i = 0; i < 400; i +=120){
      for(var y = 50; y < 600; y += 150){
        drawSmile(i, y);
    }
    }
    
    var x = -50;
    while(x < 500){
      var j = 0;
      while(j < 700){
        drawSmile(x,j)
        j +=150;
      }
      x += 120;
    }
    
    }
};

draw = function(){

}

var drawSmile = function(smileX, smileY){
  fill(random(0,255), random(0,255), random(0,255), 150);
  
  noStroke();
  ellipse(smileX,smileY,120,160);
  fill(0,0,0);
  strokeWeight(4);
  stroke(0,0,0)
  line(smileX+20, smileY+20, smileX-20, smileY+20); 
  ellipse(smileX-20,smileY-20,5,10);
  ellipse(smileX+20,smileY-20,5,10);
}

var drawCloud = function(cloudX, cloudY){
  textSize(200);
  text('☁️', cloudX, cloudY);
}
