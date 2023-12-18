# verilator_lint_lab_examples


Run command:

go to file area

excute below command :
verilator --unused-regexp -Wall --lint-only design_file_name.v

--unused-regexp ==> Disable warning, If we not used any declared signals
-Wall ==> Enable style checks 
--lint-only ==> Enable lint checks
