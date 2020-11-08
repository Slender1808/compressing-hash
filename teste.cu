#include <iostream>
#include <string>		// Necessário para usar strings
using namespace std;

int main() {
  string text = "c0f21f95d6f5ba2651c599ad9fc847c0923687f6006635e46313335011e152ce1eac3396ba03d15a625d9649a4572cc8dbebcd6810bea0351846bb262a78ab5b";

  int textSize = text.length();
  
  /*string hex = "";
  hex += text[0] ;
  hex += text[1];
  hex += text[2];
  hex += text[3];

  std::cout << hex << "\n";*/

  //FFFF
  string newText;
  int i = 0;
  while(i < textSize / 4){
    string hex = "";
    hex += text[0] ;
    hex += text[i + 1];
    hex += text[i + 2];
    hex += text[i + 3];
    
    //std::cout << hex << "\n";

    uint16_t num = std::stoi( hex, nullptr, 16 );
    uint8_t array[sizeof(num)];

    newText[i] = num;
    
    i = i + 4;
  }

  std::cout << "newText " << newText << "\n";


}