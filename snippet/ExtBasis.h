class ExtBasis
{
	// Attributes //	
	MathVec Xvec;						// Positions from inertial frame?
	MathVec Yvec;
	MathVec Zvec;
	MathVec Ovec;						// How is this defined?
	
	// Methods //
	void moveAlong(double);
	void rotateAround(double);
	void setAttributes(double);
}