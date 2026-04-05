module scientific_basics
  implicit none
  private

  public :: say_hello
contains
  subroutine say_hello
    print *, "Hello, scientific_basics!"
  end subroutine say_hello
end module scientific_basics
