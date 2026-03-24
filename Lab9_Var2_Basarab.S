#include <iostream>
using namespace std;

int main() {
    int n, m;
    cout << "Enter rows and columns: ";
    cin >> n >> m;

    double a[100][100];

    cout << "Enter elements:\n";
    for (int i = 0; i < n; i++)
        for (int j = 0; j < m; j++)
            cin >> a[i][j];

    double mainDiagSum = 0, sideDiagSum = 0;
    int mainCount = 0, sideCount = 0;

    for (int i = 0; i < n; i++) 
    {
        if (i < m) 
        {
            mainDiagSum += a[i][i];
            mainCount++;
        }
        if (i < m) 
        {
            sideDiagSum += a[i][m - 1 - i];
            sideCount++;
        }
    }

    double mainAvg = mainDiagSum / mainCount;
    double sideAvg = sideDiagSum / sideCount;

    double maxVal = a[0][0];
    int maxRow = 0, maxCol = 0;

    for (int i = 0; i < n; i++)
        for (int j = 0; j < m; j++)
            if (a[i][j] > maxVal) {
                maxVal = a[i][j];
                maxRow = i;
                maxCol = j;
            }

    cout << "Main diagonal average: " << mainAvg << endl;
    cout << "Side diagonal average: " << sideAvg << endl;
    cout << "Max element: " << maxVal << endl;
    cout << "Position: [" << maxRow << "][" << maxCol << "]" << endl;

    return 0;
}
