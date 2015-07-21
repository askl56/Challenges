#include <string>
#include <iostream>

using namespace std;

size_t garland(string &s)
{
  size_t len = s.length();
  // Empty strings have no garland.
  if (0 == len)
    return 0;

  for (size_t gLength = len - 1; gLength > 0; gLength--)
    if (s.substr(0, gLength) == s.substr(len-gLength, gLength))
      return gLength;

  // If we made it here, failed to find a garland.
  return 0;
};

int main(int argc, char *argv[])
{
  string str{"alfalfa"};

  if (argc > 1)
    str = argv[1];

  size_t gLength = garland(str);

  if (gLength > 0) {
    cout << "Garland has length " << gLength
         << ", corresponds to \""
         << str.substr(0,gLength)
         << "\"" << endl;

    string tail = str.substr(gLength);
    cout << "Here is a pretty garland for you:" << endl;
    cout << str;
    for (int i=0; i<10; i++)
      cout << tail;
    cout << "..." << endl;

  } else {
    cout << "No garland found. Judy is sad." << endl;
  };

  return 0;
};
