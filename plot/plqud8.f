!$Id:$
      subroutine plqud8(iel)

!      * * F E A P * * A Finite Element Analysis Program

!....  Copyright (c) 1984-2020: Regents of the University of California
!                               All rights reserved

!-----[--.----+----.----+----.-----------------------------------------]
!      Purpose: 2-D Plot Sequence for 4-node quadrilateral elements

!      Inputs:
!         iel       - Element type number

!      Outputs:
!         none      - Plot output to screen/file
!-----[--.----+----.----+----.-----------------------------------------]
      implicit  none

      include  'pdata5.h'
      include  'pdata6.h'

      integer       :: iel

      save

!     Set number of points

      if(iel.gt.0) then

        inord(iel)    = 9

!       Set plot sequence

        ipord( 1,iel) = 1
        ipord( 2,iel) = 5
        ipord( 3,iel) = 2
        ipord( 4,iel) = 6
        ipord( 5,iel) = 3
        ipord( 6,iel) = 7
        ipord( 7,iel) = 4
        ipord( 8,iel) = 8
        ipord( 9,iel) = 1

      elseif(iel.lt.0) then

        exord(-iel)    = 9

!       Set plot sequence

        epord( 1,-iel) = 1
        epord( 2,-iel) = 5
        epord( 3,-iel) = 2
        epord( 4,-iel) = 6
        epord( 5,-iel) = 3
        epord( 6,-iel) = 7
        epord( 7,-iel) = 4
        epord( 8,-iel) = 8
        epord( 9,-iel) = 1

      endif

      end subroutine plqud8
