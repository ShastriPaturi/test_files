program sumvector_MPI

implicit none

integer :: num_rows, I
integer, parameter :: max_rows = 100
real    :: vector (max_rows), sum

print *, "Please enter the number of numbers to sum"
read *, num_rows
if (num_rows .gt. max_rows) stop "Too many numbers"

! Initialize the vector

do I = 1, num_rows
   vector (I) = float (I)
end do

! compute sum

sum = 0.0
do I = 1, num_rows
   sum = sum + vector (I)
end do

print *, "The grand total is: ", sum

stop
end
