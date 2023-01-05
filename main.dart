

//NAME   : INNOCENT CHIGWENDE
//SUBJECT: OOP
//TASK   : Write very simple console Hello {your name}.

void main(List<String> arguments) {

 List<String> fullName = ['Innocent', 'Chigwende'];

String firstName = fullName[0];
String lastName = fullName[1];
DateTime currentTime = DateTime.now();
print('Hello, ${firstName} ${lastName}, \n${currentTime}');

}