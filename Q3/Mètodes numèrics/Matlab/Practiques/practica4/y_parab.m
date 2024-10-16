function y = parabola_y(x, al)
    g = 9.81;
    vo = 37;
    al = al *2*pi/360;
    v_ox = vo*cos(al);
    v_oy = vo*sin(al);
    y=(v_oy/v_ox).*x-(1/2)*g*(x/v_ox).^2;
end