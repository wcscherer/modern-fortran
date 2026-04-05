module scientific_basics
  implicit none
  private

  public :: square
contains
  pure real function square(x)
    real, intent(in) :: x
    square = x * x
end function square

end module scientific_basics