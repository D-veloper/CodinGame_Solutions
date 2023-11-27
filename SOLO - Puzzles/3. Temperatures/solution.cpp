#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

using namespace std;

/**
 * Auto-generated code below aims at helping you parse
 * the standard input according to the problem statement.
 **/

int main()
{
    int n; // the number of temperatures to analyse
    cin >> n; cin.ignore();
    int temp = 5526;
    for (int i = 0; i < n; i++) {
        int t; // a temperature expressed as an integer ranging from -273 to 5526
        cin >> t; cin.ignore();
        cerr << "temp is " << temp << endl;
        cerr << "t is " << t << endl;
        
        if (temp > 0)
        {
            if (temp > abs(t))
            {
                temp = t;
            }
        }
        else if (temp < 0)
        {
            if(abs(temp) > abs(t) || (abs(temp) == t)) 
            {
                temp = t;
            }
        }
    }
    if (n == 0)
    {
        temp = 0;
    }

    // Write an answer using cout. DON'T FORGET THE "<< endl"
    // To debug: cerr << "Debug messages..." << endl;

    cout << temp << endl;
}