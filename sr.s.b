#include <iostream>
using namespace std;

int main() {
    int array[10];
    int sum = 0;

   
    cout << "Enter 10 integers:" << endl;
    for (int i = 0; i < 10; i++) 
    {
        cin >> array[i];
    }


    cout << "Array elements: ";
    for (int i = 0; i < 10; i++) 
    {
        cout << array[i] << " ";
        sum += array[i];
    }

    
    cout << endl;
    cout << "Sum of elements = " << sum << endl;

    return 0;
}
