#include <stdio.h>
#include <stdlib.h>

int main()
{
  enum Company {GOOGLE = 0, FACEBOOK, XEROX = 2, YAHOO, EBAY = 4, MICROSOFT};
  enum Company xerox = XEROX;
  enum Company facebook = FACEBOOK;
  enum Company ebay = EBAY;
  printf("the value of Xerox is: %d", xerox);

    return 0;
}
