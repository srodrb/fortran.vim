####################################################################
#  Author: Samuel Rodriguez Bernabeu
#
#  Date:   19/06/2013
#  License: GNU
#  Institution: Universidad de Leon (Spain)
#
#  Purpose:
#          Some simple snippets for working with Fortran on Vim
# 
#####################################################################


# Program 
snippet prog
  program ${1:!program_name!}
	implicit none

	!! ============== Variables ================== !!
	${2: !variable_list!}

	!! ============ Program core ================= !!
	${3: !code_here!}

	end program $1

# Subroutine 
snippet sub
	subroutine ${1:!subroutine_name!}
	implicit none

	!! ================ Variables ================== !!
	${2: !variable_list!}

	!! ============ Subroutine core ================ !!
	${3: !code_here!}

	end subroutine $1

# functions 
snippet fun
	${1: !return type!} function ${2:!function_name!} (${3:!argument_list!})
	implicit none

	!! ================ Variables ================== !!
	${4: !variable_list!}

	!! ============ Subroutine core ================ !!
	${5: !code_here!}

	end function $2

########## Some useful small code parts #########

# integer ::
snippet in
	integer :: ${1: !var_list! }

# real ::
snippet re
	real :: ${1: !var_list! }

# implicit none
snippet imp
	implicit none

# write statement
snippet wri
	write(*,*) "${1: code_here}"

# vector fast index
snippet ve
	${1:!vector_name}(i) = ${2:!code!}

########## Some practice with loops #########

# simple do loop
snippet do
	do ${1:!counter!},${2:!end!}
		${3:!loop_code!}
	end do 

# loop do personalizado para i=1,...
snippet doi
	do i=1,${1:!end!}
		${2:!loop_code!}
	end do 

# loop do personalizado para j=1,...
snippet doj
	do j=1,${1:!end!}
		${2:!loop_code!}
	end do 

# loop do personalizado para j=1,...
snippet doij
	do i=1,${1: !end! }
		do j=1,${2: !end! }
			${3:!loop_code!}
		end do
	end do

