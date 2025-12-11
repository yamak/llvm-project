//===-- RISCVInstrInfoXPAC.td - PAC Instructions --*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Mithril PAC (Pointer Authentication Code) instructions for
// hardware-assisted control flow integrity.
//
// Instructions:
//   pac.store offset(rs1), prs  - Store PAC register to memory
//   pac.load  prd, offset(rs1)  - Load PAC register from memory
//   pac.sign  prd, rs1, rs2     - Manual PAC signature generation
//   pac.auth  prs, rs1, rs2     - Explicit integrity check (fault on error)
//
//===----------------------------------------------------------------------===//

let Predicates = [HasVendorXPAC] in {
    def PAC_SIGN  : RvInstPACRType<0b000, "pac.sign">;
    def PAC_AUTH  : RvInstPACRType<0b001, "pac.auth">;
    def PAC_STORE : RvInstPACStore<"pac.store">;
    def PAC_LOAD  : RvInstPACLoad<"pac.load">;
}
