class Link
{
	// Attributes //	
    Transformation A;
    vec force;
    vec torque;
    double _theta;
    double _theta_prev;
    vec _omega;
    vec _omega_prev;
    vec _alpha;
    int last_update = 0;
	
	// Methods //
    void change_theta(double theta);
    void calculate_force(vec force_j_link);
    void calculate_torque(vec force_j_link, vec torque_j_link);
    void update_dynamics();
}