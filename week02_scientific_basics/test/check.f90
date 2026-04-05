program check
    use scientific_basics, only: square
    implicit none

    print *, "Running tests."

    call test_square_positive()
    call test_square_zero()
    call test_square_negative()

    print *, "All tests passed."

contains

    subroutine assert_close(actual, expected, tol, msg)
        real, intent(in) :: actual, expected, tol
        character(len=*), intent(in) :: msg
        if (abs(actual - expected) > tol) then
            print *, "FAIL:", trim(msg)
            print *, " expected:", expected, " actual:", actual
            error stop 1
        end if
    end subroutine assert_close

end program check
