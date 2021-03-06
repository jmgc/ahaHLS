#define DEST_ADDR 10
#define SRC_ADDR 100

struct ip_addrs {
  int source;
  int dest;
};

class counter {
  int a, b, c;
public:
  void increment();
};

class ip_receiver {
  int a, b, c;

public:
  ip_addrs get_addrs();
};

void count_packets(ip_receiver* packet_stream,
                   counter* packet_count) {
  ip_addrs addrs = packet_stream->get_addrs();
  if ((addrs.source == SRC_ADDR) &&
      (addrs.dest == DEST_ADDR)){
    packet_count->increment();
  }
}
