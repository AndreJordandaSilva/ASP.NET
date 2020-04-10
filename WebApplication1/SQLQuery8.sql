
CREATE PROC UserViewByID
@UserID int
AS
	SELECT *
	FROM Form
	WHERE UserID = @UserID