///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: transports.cpp
///
/// Author: $author$
///   Date: 3/21/2020
///////////////////////////////////////////////////////////////////////
#include "xos/network/sockets/transports.hpp"
#include "xos/network/sockets/ip/transport.cpp"
#include "xos/network/sockets/ip/tcp/transport.cpp"
#include "xos/network/sockets/ip/v4/tcp/transport.cpp"
#include "xos/network/sockets/ip/v6/tcp/transport.cpp"
#include "xos/network/sockets/ip/udp/transport.cpp"
#include "xos/network/sockets/ip/v4/udp/transport.cpp"
#include "xos/network/sockets/ip/v6/udp/transport.cpp"

namespace xos {
namespace network {
namespace sockets {

} /// namespace sockets
} /// namespace network
} /// namespace xos
