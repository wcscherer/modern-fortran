program main
  use scientific_basics, only: square
  implicit none

  real :: x, y
  integer :: ios

  write(*,'(A)', advance="no") "Enter a single real number: "
  read(*,*, iostat=ios) x

  ! check if input read is valid
  if (ios /= 0) then
    print *, "Invalid input. Please enter a real number."
    stop 1
  end if

  y = square(x)
  print *, "Square = ", y
end program main
