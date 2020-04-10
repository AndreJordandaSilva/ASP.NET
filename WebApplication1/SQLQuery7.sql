CREATE PROC UserAddOrEdit
	@UserID	int,	
	@First_Name	nchar(50),
	@Last_Name	nchar(50),	
	@Username	nchar(50),	
	@Email		nchar(50),
	@Password	nchar(50),	
	@Phone		nchar(50)
	AS
	IF @UserID = 0 
	BEGIN
		INSERT INTO Form(First_Name,Last_Name,Username,Email,Password,Phone)
		VALUES(@First_Name,@Last_Name,@Username,@Email,@Password,@Phone) 
	END
	ELSE
	BEGIN
		UPDATE Form
		SET 
			First_Name = @First_Name,
			Last_Name = @Last_Name,
			Username = @Username,
			Email = @Email ,
			Password = @Password,
			Phone = @Phone
			WHERE UserID = @userID
	END