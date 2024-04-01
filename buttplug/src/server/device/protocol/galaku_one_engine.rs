// Buttplug Rust Source Code File - See https://buttplug.io for more info.
//
// Copyright 2016-2023 Nonpolynomial Labs LLC. All rights reserved.
//
// Licensed under the BSD 3-Clause license. See LICENSE file in the project root
// for full license information.

use std::num::Wrapping;

use crate::{
  core::{errors::ButtplugDeviceError, message::Endpoint},
  server::device::{
    hardware::{HardwareCommand, HardwareWriteCmd},
    protocol::{generic_protocol_setup, ProtocolHandler},
  },
};

static KEY_TAB: [[u8; 12]; 4] = [
  [0, 24, 0x98, 0xf7, 0xa5, 61, 13, 41, 37, 80, 68, 70],
  [0, 69, 110, 106, 111, 120, 32, 83, 45, 49, 46, 55],
  [0, 101, 120, 32, 84, 111, 121, 115, 10, 0x8e, 0x9d, 0xa3],
  [0, 0xc5, 0xd6, 0xe7, 0xf8, 10, 50, 32, 111, 98, 13, 10],
];

generic_protocol_setup!(GalakuOneEngine, "galaku-one-engine");

#[derive(Default)]
pub struct GalakuOneEngine {}

impl ProtocolHandler for GalakuOneEngine {
  fn keepalive_strategy(&self) -> super::ProtocolKeepaliveStrategy {
    super::ProtocolKeepaliveStrategy::RepeatLastPacketStrategy
  }

  fn handle_scalar_vibrate_cmd(&self, _index: u32, _scalar: u32) -> Result<Vec<HardwareCommand>, ButtplugDeviceError> {
    let mut data: Vec<u8> = vec![
      90,
      0,
      0,
      1,
      49,
      _scalar as u8,
      0,
      0,
      0,
      0
    ];
    data.push(data.iter().fold(0u8, |c, b| (Wrapping(c) + Wrapping(*b)).0));

    let mut data2: Vec<u8> = vec![0x23];
    for i in 1..data.len() {
      let k = KEY_TAB[(data2[i - 1] & 3) as usize][i];
      data2.push((Wrapping((k ^ 0x23) ^ data[i]) + Wrapping(k)).0);
    }

    Ok(vec![HardwareWriteCmd::new(Endpoint::Tx, data2, true).into()])
  }
}
