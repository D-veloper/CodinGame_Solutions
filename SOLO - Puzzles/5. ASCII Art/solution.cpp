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
    int l;
    cin >> l; cin.ignore();
    int h;
    cin >> h; cin.ignore();
    string t;
    getline(cin, t);
    for (int i = 0; i < h; i++) {
        string row;
        getline(cin, row);

            for(int i = 0; i < size(t); i++)
            {
                char letter = toupper(t[i]);
                int pos;

                if (letter < 'A'|| letter > 'Z')
                {
                    pos = 104;
                }
                else
                {
                    pos = (letter - 'A') * l;
                }

                for(int i = pos; i < (pos + l); i++)
                {
                    cout << row[i];
                }
                
            }
            cout << endl;
    }
    // Write an answer using cout. DON'T FORGET THE "<< endl"
    // To debug: cerr << "Debug messages..." << endl;

}