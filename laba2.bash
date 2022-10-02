#!/bin/bash
touch ku.cpp
echo "#include <iostream>" >> ku.cpp
echo "#include <cstdlib>" >> ku.cpp
echo "#include <fstream>" >> ku.cpp
echo "using namespace std;" >> ku.cpp
echo "int main (int argc, char** argv)" >> ku.cpp
echo "{" >> ku.cpp
echo "ofstream fout;" >> ku.cpp
echo "fout.open(\"step3_script1.sh\");" >> ku.cpp
echo "fout << \"#!/bin/bash\n\";" >> ku.cpp
echo "fout << \"touch helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"#include <iostream>\\\" > helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"int main(int argc, char** argv)\\\" >> helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"{\\\" >> helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"std::cout << \\\\\\\"Hello, world!\\\\\\\";\\\" >> helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"return 0;\\\" >> helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"echo \\\"}\\\" >> helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"g++ -o helloworld helloworld.cpp\n\";" >> ku.cpp
echo "fout << \"./helloworld\";" >> ku.cpp
echo "fout.close();" >> ku.cpp
echo "system(\"chmod u+x step3_script1.sh\");" >> ku.cpp
echo "system(\"./step3_script1.sh\");" >> ku.cpp
echo "return 0;" >> ku.cpp
echo "}" >> ku.cpp
g++ -o ku ku.cpp
./ku
$SHELL