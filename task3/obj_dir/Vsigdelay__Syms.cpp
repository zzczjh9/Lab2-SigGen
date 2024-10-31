// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vsigdelay__pch.h"
#include "Vsigdelay.h"
#include "Vsigdelay___024root.h"

// FUNCTIONS
Vsigdelay__Syms::~Vsigdelay__Syms()
{
}

Vsigdelay__Syms::Vsigdelay__Syms(VerilatedContext* contextp, const char* namep, Vsigdelay* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
        // Check resources
        Verilated::stackCheck(19);
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-12);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
