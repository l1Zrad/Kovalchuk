// Константы пинов
const int LDR_PIN = A0;      // Датчик 1 (LDR) - аналоговый вход
const int PH_PIN = A1;       // Датчик 2 (POT/pH) - аналоговый вход
const int TRIG_PIN = 2;      // Датчик 3 (US) - пин Trigger
const int ECHO_PIN = 3;      // Датчик 3 (US) - пин Echo
const int RELAY_PIN = 4;     // Реле (фильтр)
const int LED_PIN = 5;       // Зелёный светодиод

// Параметры варианта
const unsigned long T_PERIOD = 1000; // Период опроса T = 1 секунда (в мс)
const float THRESHOLD = 8.0;         // Порог события: расстояние > 8 см

// Переменные состояния
unsigned long lastMillis = 0;
unsigned long measureCount = 0;
bool isEventActive = false;

void setup() {
  Serial.begin(9600);
  
  pinMode(TRIG_PIN, OUTPUT);
  pinMode(ECHO_PIN, INPUT);
  pinMode(RELAY_PIN, OUTPUT);
  pinMode(LED_PIN, OUTPUT);
  
  // Изначально всё выключено
  digitalWrite(RELAY_PIN, LOW);
  digitalWrite(LED_PIN, LOW);
}

void loop() {
  unsigned long currentMillis = millis();
  
  // Строго выдерживаем период опроса T
  if (currentMillis - lastMillis >= T_PERIOD) {
    lastMillis = currentMillis;
    measureCount++;
    
    // 1. Чтение Датчика 1: LDR (0–100%)
    int ldrRaw = analogRead(LDR_PIN);
    float s1 = (ldrRaw / 1023.0) * 100.0;
    
    // 2. Чтение Датчика 2: pH (0–14) через Потенциометр
    int phRaw = analogRead(PH_PIN);
    float s2 = (phRaw / 1023.0) * 14.0;
    
    // 3. Чтение Датчика 3: Ультразвуковой HC-SR04 (см)
    digitalWrite(TRIG_PIN, LOW);
    delayMicroseconds(2);
    digitalWrite(TRIG_PIN, HIGH);
    delayMicroseconds(10);
    digitalWrite(TRIG_PIN, LOW);
    
    long duration = pulseIn(ECHO_PIN, HIGH);
    // Расчет расстояния в см (скорость звука 340 м/с)
    float s3 = duration * 0.034 / 2.0; 
    
    // Вывод строки DATA в Serial Monitor
    Serial.print("DATA n=");
    Serial.print(measureCount);
    Serial.print(" s1=");
    Serial.print(s1, 1);
    Serial.print(" s2=");
    Serial.print(s2, 1);
    Serial.print(" s3=");
    Serial.println(s3, 1);
    
    // Проверка условия порога (расстояние > 8 см)
    if (s3 > THRESHOLD) {
      // Если условие только что начало выполняться
      if (!isEventActive) {
        isEventActive = true;
        digitalWrite(RELAY_PIN, HIGH); // Включаем реле
        digitalWrite(LED_PIN, HIGH);   // Включаем светодиод
        
        Serial.print("EVENT n=");
        Serial.print(measureCount);
        Serial.println(" type=THRESHOLD");
      }
    } else {
      // Если условия порога больше нет, а раньше было активно
      if (isEventActive) {
        isEventActive = false;
        digitalWrite(RELAY_PIN, LOW);  // Выключаем реле
        digitalWrite(LED_PIN, LOW);   // Выключаем светодиод
        
        Serial.print("EVENT n=");
        Serial.print(measureCount);
        Serial.println(" type=NORMAL");
      }
    }
  }
}
