USE [MotelMA]
GO
/****** Object:  StoredProcedure [dbo].[SP_Reservation_Entry]    Script Date: 12/5/2016 5:36:35 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[SP_Reservation_Entry]
		(@pPhoneNumber bigint,
	     @pAddress varchar(100),
	     @pCity varchar(100),
		 @pState varchar(100),
		 @pCountry varchar(100),
		 @pPostalCode varchar(100),
	     @pRooms int,
		 @pFirstName varchar(100),
		 @pLastName varchar(100),
		 @pCardType varchar(100),
		 @pCreditCardNo bigint,
		 @pExpireDate varchar(100),
		 @pAdults bigint,
	     @pReservationDate DateTime,
		 @pArrivalDate DateTime,	
		 @pDepartureDate DateTime,	           
	     @pStatus bit,
		 @pComments varchar(100)		 
		 )
AS

SET NOCOUNT ON;
SET XACT_ABORT OFF -- Allow procedure to continue after error

DECLARE	
	@NestedProc BIT = 1 
	   
BEGIN TRY
	IF @@TRANCOUNT = 0
        BEGIN
            SET @NestedProc = 0
            BEGIN TRANSACTION SP_Reservation_Entry
        END
	--BEGIN TRANSACTION 
    INSERT INTO ReservationEntry
           (PhoneNumber,
		    Address1,
			City,
			State,
			Country,
			PostalCode,
			Rooms,
			FirstName,
			LastName,
			CardType,
			CreditCardNo,
			ExpirationDate,
			Adults,
			ReservationDate,
            ArrivalDate,            
            DepartureDate,
			Comments,			          
			Status)
	 VALUES
	        (@pPhoneNumber,
			 @pAddress,
			 @pCity,
			 @pState,
			 @pCountry,
			 @pPostalCode,
			 @pRooms,
			 @pFirstName,
			 @pLastName,
			 @pCardType,
			 @pCreditCardNo,
			 @pExpireDate,
			 @pAdults,
			 @pReservationDate,
			 @pArrivalDate,	
			 @pDepartureDate,
			 @pComments,			            
			 @pStatus) 
	  
        --Commit the transaction 
        IF @@TRANCOUNT > 0 AND @NestedProc = 0
        BEGIN			
            COMMIT TRANSACTION SP_Reservation_Entry
			--select @pConfirmationNo = ReservationID from ReservationEntry where PhoneNumber = @pPhoneNumber
        END
	              
END TRY

BEGIN CATCH
        --Roll back the transaction
        IF @@TRANCOUNT > 0 AND @NestedProc = 0
        BEGIN
            ROLLBACK TRANSACTION SP_Reservation_Entry
        END       
                
        IF( XACT_STATE()) <>0
        BEGIN
            ROLLBACK TRANSACTION SP_Reservation_Entry
        END
	   
END CATCH
COMMIT
