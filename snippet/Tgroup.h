class Tgroup
{
	IDMthVec gravityCentre_Tg;			// Centre of gravity
	ExtBasis current_basis;     		// Pos & orientation of group
	std::vector <ExtBasis> future_bases // Planned
	std::vector <ExtBasis> past_bases;  // Past
	std::list<IDMthVec*> coordsPtrs;	// Points in geometry
}