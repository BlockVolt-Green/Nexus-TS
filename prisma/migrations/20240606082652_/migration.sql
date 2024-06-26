-- AlterTable
ALTER TABLE "NotarizedData" ADD COLUMN     "active_power_phase_1" DECIMAL(65,30),
ADD COLUMN     "active_power_phase_2" DECIMAL(65,30),
ADD COLUMN     "active_power_phase_3" DECIMAL(65,30),
ADD COLUMN     "active_power_phase_avg" DECIMAL(65,30),
ADD COLUMN     "apparent_power_phase_1" DECIMAL(65,30),
ADD COLUMN     "apparent_power_phase_2" DECIMAL(65,30),
ADD COLUMN     "apparent_power_phase_3" DECIMAL(65,30),
ADD COLUMN     "apparent_power_phase_avg" DECIMAL(65,30),
ADD COLUMN     "current_phase_1" DECIMAL(65,30),
ADD COLUMN     "current_phase_2" DECIMAL(65,30),
ADD COLUMN     "current_phase_3" DECIMAL(65,30),
ADD COLUMN     "current_phase_avg" DECIMAL(65,30),
ADD COLUMN     "meter_type" TEXT,
ADD COLUMN     "power_factor_phase_1" DECIMAL(65,30),
ADD COLUMN     "power_factor_phase_2" DECIMAL(65,30),
ADD COLUMN     "power_factor_phase_3" DECIMAL(65,30),
ADD COLUMN     "power_factor_phase_avg" DECIMAL(65,30),
ADD COLUMN     "voltage_phase_1" DECIMAL(65,30),
ADD COLUMN     "voltage_phase_2" DECIMAL(65,30),
ADD COLUMN     "voltage_phase_3" DECIMAL(65,30),
ADD COLUMN     "voltage_phase_avg" DECIMAL(65,30),
ALTER COLUMN "totalEnergy" DROP NOT NULL,
ALTER COLUMN "today" DROP NOT NULL,
ALTER COLUMN "power" DROP NOT NULL,
ALTER COLUMN "apparentPower" DROP NOT NULL,
ALTER COLUMN "reactivePower" DROP NOT NULL,
ALTER COLUMN "factor" DROP NOT NULL,
ALTER COLUMN "voltage" DROP NOT NULL,
ALTER COLUMN "current" DROP NOT NULL,
ALTER COLUMN "temprature" DROP NOT NULL;
