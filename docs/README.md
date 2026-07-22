# other-stuff
This is a repository for all the small projects I want to share but don't need their own repo.

## 1. Coderunner + vscode/vscodium verilog simulation script
A small script to handle different kinds of code languages and in the case of verilog and systemverilog files compile and simulate with icarus verilog and either gtkwave or the surfer extension.

See extensions.txt for all used extensions.

For verilog/sv projects the folder structure is:
Expected project structure:
   my_project/
   ├── src/   ← all design .v/.sv files
   ├── tb/    ← testbench files (*_tb.v or *_tb.sv)
   └── sim/   ← created automatically, all output goes here

The simulation is ran from the opened testbench file. 

## 2. bashrc aliases
The standard aliases I use for all kinds of stuff, for example:
1. Shorter standard shell commands
2. Tailscale settings and shortcuts
3. Custom python virtual environment management

