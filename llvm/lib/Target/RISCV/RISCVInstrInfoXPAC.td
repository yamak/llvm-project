//===-- RISCVInstrInfoPac.td - PAC Instructions --*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the PAC (Pointer Authentication Code) instructions.
//
//===----------------------------------------------------------------------===//

let Predicates = [HasVendorXPAC] in {
    def PAC_START : RvInstXPACStart<"pac.start">;
    def PAC_END   : RvInstXPACEnd<"pac.end">;
    def PAC_STORE : RvInstXPACStore<"pac.store">;
    def PAC_LOAD  : RvInstXPACLoad<"pac.load">;
}

