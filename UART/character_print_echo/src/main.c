#include "xparameters.h"
#include "xuartlite.h"

int main() {
    XUartLite uart;
    XUartLite_Config cfg;
    u8 recv, send = 'A';

    // Manually populate config
    cfg.RegBaseAddr = XPAR_XUARTLITE_0_BASEADDR;
    cfg.BaudRate   = XPAR_XUARTLITE_0_BAUDRATE;
    cfg.UseParity  = XPAR_XUARTLITE_0_USE_PARITY;
    cfg.ParityOdd  = XPAR_XUARTLITE_0_ODD_PARITY;
    cfg.DataBits   = XPAR_XUARTLITE_0_DATA_BITS;

    // Initialize using config struct
    XUartLite_CfgInitialize(&uart, &cfg, cfg.RegBaseAddr);

    // Send one character
    XUartLite_Send(&uart, &send, 1);

    // Echo loop
    while (1) {
        if (XUartLite_Recv(&uart, &recv, 1)) {
            XUartLite_Send(&uart, &recv, 1);
        }
    }
}
