class Tgroup
{
	IDMthVec gravityCentre_Tg;			// Holds the centre of gravity?
	ExtBasis current_basis;     		// Pos & orientation of group
	std::vector <ExtBasis> future_basis // What is saved here?
	std::vector <ExtBasis> past_basis;  // The last basis?
	std::list<IDMthVec*> coordsPtrs;	// List of points for geometry?
}