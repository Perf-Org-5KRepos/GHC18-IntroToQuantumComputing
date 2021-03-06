// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT license.

/////////////////////////////////////////////////////////////////////////////////////////////////
// This file contains the template of Deutsch-Jozsa algorithm which you will be working on.
/////////////////////////////////////////////////////////////////////////////////////////////////

namespace Quantum.DeutschJozsaAlgorithm {
    open Microsoft.Quantum.Primitive;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Extensions.Diagnostics;
    
    // Inputs:
    //      1) the number of qubits N in the input register for the function f
    //      2) a quantum operation which implements the phase-flipping oracle |x⟩ -> (-1)ᶠ⁽ˣ⁾ |x⟩, 
    //         where x is an N-qubit input register, and f is a Boolean function
    // You are guaranteed that the function f implemented by the oracle is either
    // constant (returns 0 on all inputs or 1 on all inputs) or
    // balanced (returns 0 on exactly one half of the input domain and 1 on the other half).
    // Return:
    //      true if the function f is constant
    //      false if the function f is balanced
    operation DeutschJozsaAlgorithm (N : Int, oracle : (Qubit[] => Unit)) : Bool {
        
        // Create a boolean variable for storing the return value.
        // You'll need to update it later, so it has to be declared as mutable.
        mutable isConstant = true;
        
        // Allocate an array of N qubits for the input register x.
        using (x = Qubit[N]) {
            // Newly allocated qubits start in the |0⟩ state.
            // The first step is to prepare the qubits in the required state before calling the oracle.
            // Each qubit of the input register has to be in the |+⟩ state.
            // A qubit can be transformed from the |0⟩ state to the |+⟩ state by applying a Hadamard gate H.
            // You can use the library function ApplyToEach to apply a gate to each qubit of a register;
            // the first argument is the name of the gate to be applied, and the second argument is the name of the register.
            
            
            // Apply the oracle to the input register.
            // The syntax is the same as for applying any function or operation.
            
            
            // Apply a Hadamard gate to each qubit of the input register again.
            
            
            // Measure each qubit of the input register in the computational basis using the M operation.
            // You can use a for loop to iterate over the range of indexes 0..N-1.
            // If any of the measurement results is One, the function implemented by the oracle is balanced.
            // Note that you can't return the answer in the middle of a loop,
            // you have to update the variable isConstant using the "set" keyword.
            
            
            // Before releasing the qubits make sure they are all in the |0⟩ state
            // (otherwise you'll get a ReleasedQubitsAreNotInZeroState exception).
            // You can use the library operation Reset which measures a qubit and applies a correction if necessary.
            // The library operation ResetAll does the same for a register of qubits.
            
        }
        
        return isConstant;
    }
}
