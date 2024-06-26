import * as json from 'multiformats/codecs/json'
import { sha256 } from 'multiformats/hashes/sha2'
import { CID } from 'multiformats/cid'
import { base32 } from "multiformats/bases/base32"
import { readFile, readFileSync } from 'fs'
import * as Block from 'multiformats/block'
import * as codec from 'multiformats/codecs/raw'


async function generateCID(inputString) {
    
    // const data = readFileSync('z')
    const bytes = new TextEncoder('base32').encode(inputString)
    const hash = await sha256.digest(bytes)

    const cid = CID.create(1, 0x55, hash)

    // console.log(JSON.stringify('{"Time":"2024-05-08T20:03:24","ANALOG":{"Temperature1":-22.9},"ENERGY":{"TotalStartTime":"2024-05-06T08:00:28","Total":0.000,"Yesterday":0.000,"Today":0.000,"Power":0,"ApparentPower":0,"ReactivePower":0,"Factor":0.00,"Voltage":0,"Current":0.000},"TempUnit":"C"}'))

    
    return cid.toString()

    // const block = await Block.encode({ value: data, codec, hasher: sha256 })
    // const v = block.cid.toV1().toString(base32.encoder)

}

// Example usage
const inputString = '{"Time":"2024-06-08T08:28:54","voltage":{"voltage_phase_1":0,"voltage_phase_2":0,"voltage_phase_3":0,"voltage_phase_avg":0},"current":{"current_phase_1":0,"current_phase_2":0,"current_phase_3":0,"current_phase_avg":0},"power_factor":{"power_factor_phase_1":0,"power_factor_phase_2":0,"power_factor_phase_3":0,"power_factor_phase_avg":0},"active_power":{"active_power_phase_1":0,"active_power_phase_2":0,"active_power_phase_3":0,"active_power_phase_avg":0},"apparent_power":{"apparent_power_phase_1":0,"apparent_power_phase_2":0,"apparent_power_phase_3":0,"apparent_power_phase_avg":0}}'
console.log(inputString.length)
generateCID(inputString)
    .then(cid => {
        console.log("CID:", cid);
    })
    .catch(error => {
        console.error("Error:", error);
    });
