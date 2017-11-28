class Machine::Part
{
	// Attributes //	
	Tgroup *tGrpP;						// Tgroup for this part
	MathVec r_offsPart;				// Relative offset
	Angle partAngle;					// Rotation angle
	
	// Methods //
	ExtBasis* dirKin_rotate(ExtBasis, Angle)
}