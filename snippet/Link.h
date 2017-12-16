class Link
{
	// Attributes //	
    Transformation A;
    vec force;
    vec torque;
    double q;
    double q_prev;
    int last_update = 0;
	
	// Methods //
    void change_theta(double theta);
    void newton_euler_forward(int inc_dynamic_eff);
    void newton_euler_backward(int inc_dynamic_eff);
}