#define         Serial_No                     "1025af"
#define         READ_SAMPLE_INTERVAL         (100)    //define how many samples you are going to take in normal operation
#define         READ_SAMPLE_TIMES            (10)     //define the time interal(in milisecond) between each samples in 
                                                     //normal operation
int mq3_analogPin = A0; // connected to the output pin of MQ3
 
float get_BAC_from_Voltage(float v){
  float b = 0.59842 ;
  float a = 2.64581 ;
  float BAC = (v-a)/b ;
  return (BAC > 0 ? BAC : 0);
}

void create_json(float BAC, int driving_ability){
  Serial.print("\{\"serial_no\":\"");
  Serial.print(Serial_No);
  Serial.print("\",");
  Serial.print("\"driving_ability\":");
  Serial.print(driving_ability);
  Serial.print(",");
  Serial.print("\"measurement\":");
  Serial.print(BAC);
  Serial.println("}");
}

void setup() {
  pinMode(8, INPUT);
  pinMode(12, OUTPUT);
  Serial.begin(9600); // open serial at 9600 bps
}

void loop() {
  // Serial.println("Breath in");
  digitalWrite(12, HIGH);   // turn the LED on (HIGH is the voltage level)
  delay(2000);              // wait for a second
  digitalWrite(12, LOW);    // turn the LED off by making the voltage LOW

  
  float mq3_value=0;

  for (int i=0;i<READ_SAMPLE_TIMES;i++) {
    mq3_value += analogRead(mq3_analogPin);
    delay(READ_SAMPLE_INTERVAL);
  }   
  mq3_value = mq3_value/READ_SAMPLE_TIMES;

  float voltage = mq3_value * (5.0 / 1023.0); // get mq3 voltage 
  float response = get_BAC_from_Voltage(voltage);
  
  if(voltage<2.78){  
    create_json (response,1);  
    delay(5000);
  }else if(voltage>=2.78){
    float response = get_BAC_from_Voltage(voltage);
    create_json (response,0);
    delay(5000);
  }
}
