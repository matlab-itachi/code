clc
clear all
syms x y z real
f = input('Enter the vector as i, j and k: ');
curl_F = curl(f, [x,y,z])
div_F = divergence(f, [x,y,z])
