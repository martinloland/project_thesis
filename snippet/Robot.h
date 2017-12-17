class Robot
{
	// Attributes //	
	vector<Link*> links;
	Transformation T;	
	// Methods //
	void addLink(Link* link);
	void change_theta(double theta, int link_index);
	void animate(double percentage);
	void newtonEuler(int inc_dynamic_eff);
}