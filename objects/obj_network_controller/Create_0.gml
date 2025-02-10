if (keyboard_check_pressed(ord("H"))) 
{
    network_socket = network_create_socket(network_socket_udp);
    network_connect(network_socket, "127.0.0.1", 6510);
}

if (keyboard_check_pressed(ord("J"))) 
{
    network_socket = network_create_socket(network_socket_udp);
    network_connect(network_socket, "127.0.0.1", 6510);
}