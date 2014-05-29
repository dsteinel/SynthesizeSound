import ddf.minim.*;
import ddf.minim.ugens.*;

Minim       minim;
AudioOutput out;
Oscil       wave;

void setup()
{
  size(512, 200);
  
  minim = new Minim(this);
  out = minim.getLineOut();
  wave = new Oscil( 700, 1.5f, Waves.SINE );
  wave.patch( out );
  wave.setWaveform( Waves.SINE );
}

void draw()
{
  background(0);
  wave.setFrequency( 0 );
}

void mouseMoved()
{
  float amp = map( mouseY, 0, height, 1, 0 );
  wave.setAmplitude( amp );
  float freq = map( mouseX, 0, width, 110, 880 );
  wave.setFrequency( freq );
  println(amp);
}
