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

    subroutine test_square_positive()
        call assert_close(square(2.0), 4.0, 1.0e-6, "square(2.0) should be 4.0")
    end subroutine test_square_positive

    subroutine test_square_zero()
        call assert_close(square(0.0), 0.0, 1.0e-6, "square(0.0) should be 0.0")
    end subroutine test_square_zero

end program check
