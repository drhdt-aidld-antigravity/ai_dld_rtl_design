Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
# Dot source the OSS CAD Suite environment
. ../../../tools/oss-cad-suite/environment.ps1

# Run compilation
Write-Host "Compiling..."
iverilog -g2012 -o ../results/mux_2to1.vvp ../rtl/mux_2to1.v ../tb/tb_mux_2to1.v

if ($LASTEXITCODE -ne 0) {
    Write-Error "Compilation failed!"
    exit $LASTEXITCODE
}

# Run simulation
Write-Host "Running simulation..."
vvp ../results/mux_2to1.vvp > ../logs/sim.log

# Output logs to console for visibility
Get-Content ../logs/sim.log

# Check log for failures or successes
if (Select-String -Path ../logs/sim.log -Pattern "ERROR" -Quiet) {
    Write-Warning "Simulation failed! Check ../logs/sim.log"
    exit 1
} else {
    Write-Host "Simulation completed successfully!"
}
