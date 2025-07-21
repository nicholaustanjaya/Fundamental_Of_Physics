clear all
clc

%% Perpindahan
% % Perpindahan = Posisi akhir - Posisi awal
% % delta_x = x_f - x_i
% 
% %parameter
% x = [5 4 3 2 1]; % meter
% delta_t = 10; % detik
% 
% delta_x = x(end) - x(1)

%% Kecepatan rata-rata dan kelajuan rata-rata
% % Kecepatan rata-rata = perpindahan / perubahan waktu
% v_avg = delta_x / delta_t
% 
% % Kelajuan rata-rata = total jarak / perubahan waktu
% s_avg = sum(x) / delta_t 

%% Kecepatan dan kelajuan sesaat
% Kecepatan sesaat(t) = perpindahan / perubahan waktu
% Kelajuan sesaat(t) = total jalan / perubahan waktu
% Perubahan waktu yang kecil untuk kelajuan sesaat
% t = t_akhir - t_awal
% Kecepatan = vektor ; Kelajuan = skalar

%% Percepatan
% Percepatan rata-rata = perubahan kecepatan / perubahan waktu
% Percepatan sesaat (t) = perubahan kecepatan / perubahan waktu 
% Perubahan waktu yang kecil untuk percepatan sesaat

%% Contoh soal
syms x t
% Diketahui posisi partikel
% x(t) = 4 - 27 * t + t^3
% Tentukan v(t) dan a(t)
time = linspace(0,10,101); % Definisikan waktu dari 0 hingga 10 detik tiap 0.1 s
x = 4 - 27 * t + t^3; % Diketahui persamaan posisi tiap waktu

% Kecepatan sesaat
v = diff(x);

% Percepatan sesaat
a = diff(v);

% Substitusi waktu dan ubah tipe data dari symbol ke double
x = double(subs(x,t,time));
v = double(subs(v,t,time));
a = double(subs(a,t,time));

figure
subplot(3,1,1)
plot(time,x)
title("x(t)")
xlabel("Waktu(s)")
ylabel("Perpindahan(m)")
xlim ([0 10])
xticks(0:2:10)
hold on

subplot(3,1,2)
plot(time,v)
title("x(t)")
xlabel("Waktu(s)")
ylabel("Kecepatan(m)")
xlim ([0 10])
xticks(0:2:10)
yline(0, "r")
hold on

subplot(3,1,3)
plot(time,a)
title("x(t)")
xlabel("Waktu(s)")
ylabel("Percepatan(m)")
xlim ([0 10])
xticks(0:2:10)

%% Kasus khusus : percepatan konstan