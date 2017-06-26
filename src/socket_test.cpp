#include <iostream>
#include <getopt.h>
#include <stdlib.h>
#include <errno.h>
#include <sstream>

#include "mqpipc.h"
#include "mqpif.h"

///////////////////////////////////////////
static MQPIf mqpif;

int main(int argc, char *argv[]){
	std::cout << "starting" << std::endl;

	extern char *optarg;
	int c;
	char host[256];
	int port = 9999;
	::strcpy(host, "localhost");  //strcpy == string copy -BH

	while ((c = getopt(argc, argv, "h:p:")) != -1) {
		switch (c) {
			case 'h' :	::strcpy(host, optarg);			break;
			case 'p' :	port		= atoi(optarg);		break;
			default :	std::cout << "error from flags" << std::endl;		break;
		}
	}

	std::stringstream ss;
	ss << 1 << ',';
	ss << 2 << ',';
	ss << 3 << ',';
	ss << 4 << ',';
	ss << 5;
	std::string str = ss.str();

	try{
		mqpif.connect(host, port);

		for (int i = 1;; i++){
			mqpif.sendOne(MQPIF_CAMERA, str.c_str(), str.length() + 1);
		}

		mqpif.disconnect();
	}
	catch (const char *n_err) {
		std::cout << "error" << std::endl;
	}
	catch (...) {
		std::cout << "internal error" << std::endl;
	}
	std::cout << "exiting" << std::endl;
	return 0;

}