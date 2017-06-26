import socket
import SocketServer

# This is a python2 file

def interpretMsg(self, size):
    while True:
	datastream = self.request.recv(size)
	print datastream.split(',')
        break


class MyTCPHandler(SocketServer.BaseRequestHandler):
    """
    The request handler class for our server.

    It is instantiated once per connection to the server, and must
    override the handle() method to implement communication to the
    client.
    """

    def handle(self):
        while True:
            length = 0
            while True:
                c = self.request.recv(1).strip()
                

                if ((c >= '0') and (c <= '9')):
                    length = (length * 10) + int(c)
                else:
                    break

            print "length = ", length # = 56 for camera, 24 for lidar
            if length > 0:
                interpretMsg(self, length)
            else:
                break
            #print "c = ", c
            #print length
            #data = self.request.recv(length)
            #print "full msg data: ", data

        print "done"
        quit()


if __name__ == "__main__":
    HOST, PORT = "localhost", 9999

    # Create the server, binding to localhost on port 9999
    server = SocketServer.TCPServer((HOST, PORT), MyTCPHandler)

    print "listening on port %i.  Press Ctrl-C to quit" %PORT

    # Activate the server; this will keep running until you
    # interrupt the program with Ctrl-C
    server.serve_forever()
