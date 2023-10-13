program eigen_example
implicit none
integer, parameter :: n = 2
integer :: lda
integer :: info
integer :: lwork
complex*16 :: A(n, n)
complex*16 :: W(n)
complex*16 :: VL(n, n)  ! Left eigenvectors (not used here)
complex*16 :: VR(n, n)  ! Right eigenvectors
complex*16 :: work(2*n)
double precision :: rwork(2*n)

lwork=2*n
lda=n

  ! Initialize your matrix A
  A(1, 1) = 1.
  A(1, 2) = 2.
  A(2, 1) = 3.
  A(2, 2) = 4.

  call ZGEEV('N', 'V', n, A, lda, W, VL, lda, VR, lda, work, lwork, rwork, info)


    write(*, *) ''
    write(*, *) "Eigenvalues:"

    write(*, *) ''
    write(*, *) 'value1 >>',W(1)
    write(*, *) ''
    write(*, *) 'value2 >>',W(2)

    write(*, *) ''
    write(*, *) ''
    write(*, *) ''
    write(*, *) ''

    write(*, *) "Right Eigenvectors:"
    write(*, *) 'vec1 >>',VR(:, 1)
    write(*, *) ''
    write(*, *) ''
    write(*, *) ''
    write(*, *) 'vec2 >>',VR(:, 2)

end program eigen_example

