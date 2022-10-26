<script setup lang="ts">
    import type { Montre } from "@/types";

    withDefaults(defineProps<Montre>(), {
    boitier: "orange",
    bracelet: "red",
    ecran: "green",
    });   
</script>

<template>

    <svg  x="0px" y="0px"
	 viewBox="0 0 1366 768" style="enable-background:new 0 0 1366 768;" xml:space="preserve">
<symbol  id="Chargement_xA0_4" viewBox="-18 -18 35.9 35.9">
	<path class="st0" d="M-1.1,18c-4.1-0.3-7.9-1.9-10.8-4.5L-4.4,6c1,0.7,2.1,1.2,3.3,1.4V18z"/>
	<path class="st1" d="M-18-1.1c0.3-4.1,1.9-7.9,4.5-10.8L-6-4.4c-0.7,1-1.2,2.1-1.4,3.3H-18z"/>
	<path class="st2" d="M-13.5,11.9C-16.1,9-17.7,5.2-18,1.1h10.6C-7.2,2.4-6.7,3.5-6,4.4L-13.5,11.9z"/>
	<path class="st3" d="M11.9,13.5C9,16.1,5.2,17.7,1.1,18V7.4C2.4,7.2,3.5,6.7,4.4,6L11.9,13.5z"/>
	<path class="st4" d="M6-4.4l7.5-7.5C16.1-9,17.7-5.2,18-1.1H7.4C7.2-2.4,6.7-3.5,6-4.4z"/>
	<path class="st5" d="M18,1.1c-0.3,4.1-1.9,7.9-4.5,10.8L6,4.4c0.7-1,1.2-2.1,1.4-3.3H18z"/>
	<path class="st6" d="M-11.9-13.5C-9-16.1-5.2-17.7-1.1-18v10.6C-2.4-7.2-3.5-6.7-4.4-6L-11.9-13.5z"/>
	<path class="st7" d="M1.1-18c4.1,0.3,7.9,1.9,10.8,4.5L4.4-6c-1-0.7-2.1-1.2-3.3-1.4V-18z"/>
</symbol>
<symbol  id="Orb_xA0_-_Gris" viewBox="-33.1 -36 66.2 72">
	
		<radialGradient id="SVGID_1_" cx="994.8647" cy="22950.3672" r="28.949" gradientTransform="matrix(1.1428 0 0 0.2501 -1136.9314 -5768.6475)" gradientUnits="userSpaceOnUse">
		<stop  offset="9.815951e-02" style="stop-color:#DADADA;stop-opacity:0.95"/>
		<stop  offset="1" style="stop-color:#FFFFFF;stop-opacity:0"/>
	</radialGradient>
	<path class="st8" d="M33.1-28.8c0-4-14.8-7.2-33.1-7.2s-33.1,3.2-33.1,7.2c0,4,14.8,7.2,33.1,7.2S33.1-24.8,33.1-28.8z"/>
	<g>
		<g>
			
				<radialGradient id="SVGID_2_" cx="-5.443296e-02" cy="-21.4607" r="34.1116" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
				<stop  offset="0" style="stop-color:#FFFFFF"/>
				<stop  offset="1" style="stop-color:#B1BFC7"/>
			</radialGradient>
			<path class="st9" d="M0-29.9c-18.1,0-32.8,14.7-32.8,32.8C-32.8,21-18.1,35.8,0,35.8c18.1,0,32.8-14.7,32.8-32.8
				C32.8-15.2,18.1-29.9,0-29.9z"/>
			<g>
				<path class="st10" d="M0,35.5c18,0,32.6-14.6,32.6-32.6c0-18-14.6-32.6-32.6-32.6c-18,0-32.6,14.6-32.6,32.6
					C-32.6,20.9-18,35.5,0,35.5 M0,36c-18.3,0-33.1-14.8-33.1-33.1c0-18.3,14.8-33.1,33.1-33.1c18.3,0,33.1,14.8,33.1,33.1
					C33.1,21.2,18.3,36,0,36L0,36z"/>
			</g>
		</g>
		
			<radialGradient id="SVGID_3_" cx="-11.8934" cy="-3.8935" r="11.7101" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st11" d="M-0.2-3.9c0-6.5-5.2-11.7-11.7-11.7c-6.5,0-11.7,5.2-11.7,11.7c0,6.5,5.2,11.7,11.7,11.7
			C-5.5,7.8-0.2,2.6-0.2-3.9z"/>
		
			<radialGradient id="SVGID_4_" cx="-14.6256" cy="16.3057" r="2.8135" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st12" d="M-11.9,16.3c0-1.6-1.3-2.8-2.8-2.8c-1.6,0-2.8,1.3-2.8,2.8c0,1.6,1.3,2.8,2.8,2.8
			C-13.1,19.1-11.9,17.9-11.9,16.3z"/>
		
			<radialGradient id="SVGID_5_" cx="-15.3986" cy="-6.7646" r="4.364" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st13" d="M-11.1-6.8c0-2.4-2-4.4-4.4-4.4c-2.4,0-4.4,2-4.4,4.4c0,2.4,2,4.4,4.4,4.4C-13-2.4-11.1-4.4-11.1-6.8z"/>
		
			<radialGradient id="SVGID_6_" cx="4.3202" cy="21.3321" r="5.2615" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st14" d="M9.5,21.3c0-2.9-2.4-5.3-5.3-5.3c-2.9,0-5.3,2.4-5.3,5.3c0,2.9,2.4,5.3,5.3,5.3C7.2,26.6,9.5,24.2,9.5,21.3z
			"/>
		
			<radialGradient id="SVGID_7_" cx="2.4379" cy="10.333" r="1.0776" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st15" d="M3.5,10.3c0-0.6-0.5-1.1-1.1-1.1c-0.6,0-1.1,0.5-1.1,1.1c0,0.6,0.5,1.1,1.1,1.1C3,11.4,3.5,10.9,3.5,10.3z"
			/>
		
			<radialGradient id="SVGID_8_" cx="-8.2262" cy="8.4062" r="2.2227" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st16" d="M-6,8.4c0-1.2-1-2.2-2.2-2.2s-2.2,1-2.2,2.2s1,2.2,2.2,2.2S-6,9.6-6,8.4z"/>
		
			<radialGradient id="SVGID_9_" cx="16.1866" cy="5.1104" r="15.4149" gradientTransform="matrix(1 0 0 1 -4.040000e-02 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0.1099" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9505" style="stop-color:#000000"/>
		</radialGradient>
		<path class="st17" d="M31.6,5.1c0-8.5-6.9-15.4-15.4-15.4C7.6-10.3,0.7-3.4,0.7,5.1c0,8.5,6.9,15.4,15.4,15.4
			C24.7,20.5,31.6,13.6,31.6,5.1z"/>
		
			<linearGradient id="SVGID_10_" gradientUnits="userSpaceOnUse" x1="-593.7348" y1="619.2546" x2="-630.7872" y2="582.2022" gradientTransform="matrix(0.9633 3.600000e-02 3.600000e-02 0.9647 573.9209 -562.4717)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st18" d="M3.2-1.5c9.7,9.9,20.6,15,24.9,11.9c-0.1,0.2-0.2,0.3-0.4,0.4c-4,3.9-15.3-1.3-25.3-11.5
			c-10-10.2-15-21.7-11-25.6c0.1-0.1,0.3-0.3,0.5-0.4C-11.4-22.4-6.5-11.4,3.2-1.5z"/>
		
			<linearGradient id="SVGID_11_" gradientUnits="userSpaceOnUse" x1="18926.6621" y1="-12499.2324" x2="18889.6094" y2="-12536.2832" gradientTransform="matrix(-0.3696 0.9966 0.8496 0.6373 17625.4961 -10865.0098)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st19" d="M6.1,0.9C10.9,16.8,11,31,6.4,33.4c0.2,0,0.4-0.1,0.6-0.1c5.1-1.6,5.2-16.3,0.2-32.8
			C2.2-16-6-28.1-11.1-26.5c-0.2,0.1-0.4,0.1-0.5,0.2C-6.5-26.9,1.3-15.1,6.1,0.9z"/>
		
			<linearGradient id="SVGID_12_" gradientUnits="userSpaceOnUse" x1="18590.3008" y1="-5079.2402" x2="18553.25" y2="-5116.292" gradientTransform="matrix(-0.5506 0.8376 -0.9113 -0.4243 5580.4185 -17727.0625)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st20" d="M-1.4-12.3C-15.8-8.3-26.4-1.1-25.8,4.2C-25.9,4-26,3.8-26,3.6c-1.5-5.3,9.4-13,24.3-17
			c14.9-4.1,28.1-3,29.5,2.3c0.1,0.2,0.1,0.4,0.1,0.6C25.7-15.3,12.9-16.2-1.4-12.3z"/>
		
			<linearGradient id="SVGID_13_" gradientUnits="userSpaceOnUse" x1="-2880.0906" y1="-5719.3647" x2="-2917.1428" y2="-5756.417" gradientTransform="matrix(0.8336 -0.5524 0.5524 0.8336 5584.3374 3197.1885)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st21" d="M-1.8,19.9c13.5,2.9,25.5,0.8,27.5-4.5c0,0.2,0,0.4-0.1,0.6c-1.2,5.8-13.6,8.1-27.6,5.1
			c-14-3-24.4-10.1-23.1-16c0-0.2,0.1-0.4,0.2-0.6C-25.5,10.3-15.4,17-1.8,19.9z"/>
		
			<linearGradient id="SVGID_14_" gradientUnits="userSpaceOnUse" x1="2544.7249" y1="-14879.2061" x2="2507.6709" y2="-14916.2598" gradientTransform="matrix(-0.4266 -1.395 1.45 1.230000e-02 22685.1465 3715.6348)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st22" d="M12.3,12.3C22.5-1.1,24.9-16.6,18-23c0.3,0.2,0.6,0.4,0.9,0.6c7.9,6,5.7,22.1-4.9,36
			C3.4,27.4-11.5,33.8-19.4,27.8c-0.3-0.2-0.5-0.4-0.8-0.7C-12.1,32.1,2.1,25.7,12.3,12.3z"/>
		
			<linearGradient id="SVGID_15_" gradientUnits="userSpaceOnUse" x1="8088.1284" y1="1974.3444" x2="8051.0747" y2="1937.2908" gradientTransform="matrix(0.8051 0.8335 -0.8394 0.7986 -4864.9585 -8286.5674)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st23" d="M-15.2,2c-0.5,16,4.3,29.2,10.9,30.3c-0.2,0-0.5,0-0.7,0C-12,32.1-17.2,18.5-16.6,2
			c0.5-16.5,6.6-29.8,13.5-29.6c0.2,0,0.5,0,0.7,0.1C-9-26.8-14.7-14-15.2,2z"/>
		
			<linearGradient id="SVGID_16_" gradientUnits="userSpaceOnUse" x1="17667.6523" y1="-10124.4043" x2="17630.5996" y2="-10161.4551" gradientTransform="matrix(-0.9505 0.5407 -0.4071 -1.0118 12654.3232 -19821.0176)">
			<stop  offset="0" style="stop-color:#000000"/>
			<stop  offset="0.6044" style="stop-color:#FFFFFF"/>
			<stop  offset="0.9011" style="stop-color:#000000"/>
		</linearGradient>
		<path class="st24" d="M9.2-20.8c-13.2-4.8-25.8-3.7-28.8,2.2c0.1-0.2,0.1-0.5,0.2-0.7c2.3-6.5,15.4-7.8,29.1-2.9
			C23.4-17.2,32.6-7.9,30.2-1.4c-0.1,0.2-0.2,0.5-0.3,0.7C31.4-7.2,22.4-16,9.2-20.8z"/>
		<g>
			
				<linearGradient id="SVGID_17_" gradientUnits="userSpaceOnUse" x1="-3673.8684" y1="15508.9375" x2="-3673.8684" y2="15428.3779" gradientTransform="matrix(0.6881 0 0 0.3317 2527.9883 -5112.4512)">
				<stop  offset="0" style="stop-color:#FFFFFF"/>
				<stop  offset="1" style="stop-color:#000000"/>
			</linearGradient>
			<path class="st25" d="M19.8,21.8c0-5.6-8.8-10.1-19.8-10.1c-10.9,0-19.8,4.5-19.8,10.1S-10.9,31.9,0,31.9
				C10.9,31.9,19.8,27.4,19.8,21.8z"/>
		</g>
	</g>
</symbol>
<symbol  id="Puce_xA0_6_xA0_-_Gris" viewBox="-24 -24 48 48">
	<g>
		<linearGradient id="SVGID_18_" gradientUnits="userSpaceOnUse" x1="-7.4889" y1="17.9862" x2="10.2791" y2="-24.687">
			<stop  offset="0" style="stop-color:#FFFFFF"/>
			<stop  offset="1" style="stop-color:#D4D6D7"/>
		</linearGradient>
		<path class="st26" d="M0-23.7c-13.1,0-23.8,10.7-23.8,23.8S-13.1,23.7,0,23.7S23.8,13.1,23.8,0S13.1-23.7,0-23.7z"/>
		<g>
			<path class="st27" d="M0,23.5C13,23.5,23.5,13,23.5,0C23.5-13,13-23.5,0-23.5S-23.5-13-23.5,0C-23.5,13-13,23.5,0,23.5 M0,24
				c-13.3,0-24-10.7-24-24c0-13.3,10.7-24,24-24S24-13.3,24,0C24,13.3,13.3,24,0,24L0,24z"/>
		</g>
	</g>
	<g>
		<linearGradient id="SVGID_19_" gradientUnits="userSpaceOnUse" x1="14.6593" y1="-18.2566" x2="-9.2982" y2="11.5793">
			<stop  offset="0" style="stop-color:#FFFFFF"/>
			<stop  offset="1" style="stop-color:#B8BABC"/>
		</linearGradient>
		<path class="st28" d="M17.5,0c0-9.7-7.8-17.5-17.5-17.5S-17.5-9.7-17.5,0S-9.7,17.5,0,17.5S17.5,9.7,17.5,0z"/>
	</g>
	<g>
		
			<radialGradient id="SVGID_20_" cx="-3.834" cy="6.7394" r="15.3647" gradientTransform="matrix(1 0 0 1 -5.000000e-04 0)" gradientUnits="userSpaceOnUse">
			<stop  offset="0" style="stop-color:#FFFFFF"/>
			<stop  offset="1" style="stop-color:#B1BFC7"/>
		</radialGradient>
		<path class="st29" d="M0-14.5C-8-14.5-14.5-8-14.5,0C-14.5,8-8,14.5,0,14.5S14.5,8,14.5,0C14.5-8,8-14.5,0-14.5z"/>
		<g>
			<path class="st10" d="M0,14c7.7,0,14-6.3,14-14c0-7.7-6.3-14-14-14S-14-7.7-14,0C-14,7.7-7.7,14,0,14 M0,15c-8.3,0-15-6.7-15-15
				s6.7-15,15-15c8.3,0,15,6.7,15,15S8.3,15,0,15L0,15z"/>
		</g>
	</g>
	<g class="st30">
		<linearGradient id="SVGID_21_" gradientUnits="userSpaceOnUse" x1="-2.2737" y1="3.9247" x2="8.5504" y2="-14.7446">
			<stop  offset="0" style="stop-color:#FFFFFF"/>
			<stop  offset="1" style="stop-color:#B7C6CE"/>
		</linearGradient>
		<path class="st31" d="M8.9,12c0.1-0.7,0.2-1.4,0.2-2c0-8.3-6.7-15-15-15c-3.3,0-6.4,1.1-8.9,3c1-7.3,7.3-13,14.8-13
			c8.3,0,15,6.7,15,15C15,4.9,12.6,9.3,8.9,12z"/>
	</g>
</symbol>
<g id="bracelet">
	<path class="bracelet" stroke="black" stroke-width="3" d="M550.4,73.4c0,0,52.2-20.3,98.6-18.8c46.4,1.4,95.7,15.9,95.7,15.9s-29,271-26.1,349.3S746.1,727,746.1,727
		s-47.8,21.7-92.8,18.8c-44.9-2.9-97.1-17.4-97.1-17.4s23.9-239.1,23.9-333.3S550.4,73.4,550.4,73.4z" :fill="bracelet"/>
	<path class="bracelet" stroke="black" stroke-width="3" d="M509.8,199.4c0,0,39.1-72.5,34.8-126.1c0,0,17.4-27.5,102.9-27.5s110.1,18.8,110.1,18.8
		s14.8,110.1,35.1,130.4c0,0-96,18.8-148.1,18.8C592.4,213.9,509.8,199.4,509.8,199.4z" :fill="bracelet"/>
	<path class="bracelet" stroke="black" stroke-width="3" d="M795.1,607.8c0,0-41.9,70.9-39.6,124.7c0,0-18.4,26.9-103.9,23.6s-109.3-23-109.3-23s-10.6-110.6-30.1-131.7
		c0,0,96.6-15.2,148.7-13.2C713.1,590.2,795.1,607.8,795.1,607.8z" :fill="bracelet"/>
</g>
<g id="boitier">
	<path class="boitier" :fill="boitier" stroke="black" stroke-width="3" d="M758.5,629.8H540.2c-44.6,0-80.8-36.2-80.8-80.8V257c0-44.6,36.2-80.8,80.8-80.8h218.3
		c44.6,0,80.8,36.2,80.8,80.8v292C839.3,593.6,803.2,629.8,758.5,629.8z"/>
	<path class="boitier" :fill="boitier" stroke="black" stroke-width="3" d="M747.9,604.4h-197c-39.9,0-72.2-32.3-72.2-72.2V273.8c0-39.9,32.3-72.2,72.2-72.2h197
		c39.9,0,72.2,32.3,72.2,72.2v258.4C820.1,572.1,787.7,604.4,747.9,604.4z"/>
	<path class="boitier" :fill="boitier" stroke="black" stroke-width="3" d="M735.9,587.9H562.8c-36,0-65.2-29.2-65.2-65.2V283.3c0-36,29.2-65.2,65.2-65.2h173.1
		c36,0,65.2,29.2,65.2,65.2v239.4C801.1,558.7,771.9,587.9,735.9,587.9z"/>
</g>
<g id="boitier_rond" class="boitier">
	<g class="st35">
		<path class="boitier" :fill="boitier" stroke="black" stroke-width="3" d="M653.7,637.2c-63.6,0-123.4-24.8-168.3-69.7c-45-45-69.7-104.7-69.7-168.3c0-63.6,24.8-123.4,69.7-168.3
			c45-45,104.7-69.7,168.3-69.7s123.4,24.8,168.3,69.7c45,45,69.7,104.7,69.7,168.3c0,63.6-24.8,123.4-69.7,168.3
			C777.1,612.5,717.3,637.2,653.7,637.2z"/>
		<path d="M653.7,161.2c32.1,0,63.3,6.3,92.6,18.7c28.3,12,53.8,29.1,75.6,51c21.9,21.9,39,47.3,51,75.6
			c12.4,29.3,18.7,60.5,18.7,92.6c0,32.1-6.3,63.3-18.7,92.6c-12,28.3-29.1,53.8-51,75.6c-21.9,21.9-47.3,39-75.6,51
			c-29.3,12.4-60.5,18.7-92.6,18.7c-32.1,0-63.3-6.3-92.6-18.7c-28.3-12-53.8-29.1-75.6-51c-21.9-21.9-39-47.3-51-75.6
			c-12.4-29.3-18.7-60.5-18.7-92.6c0-32.1,6.3-63.3,18.7-92.6c12-28.3,29.1-53.8,51-75.6c21.9-21.9,47.3-39,75.6-51
			C590.5,167.5,621.6,161.2,653.7,161.2 M653.7,161c-131.5,0-238.2,106.6-238.2,238.2s106.6,238.2,238.2,238.2
			s238.2-106.6,238.2-238.2S785.3,161,653.7,161L653.7,161z"/>
	</g>
	<g class="boitier">
		<path class="boitier" :fill="boitier" stroke="black" stroke-width="2" d="M653.7,619.5c-58.9,0-114.2-22.9-155.8-64.5s-64.5-97-64.5-155.8s22.9-114.2,64.5-155.8s97-64.5,155.8-64.5
			c58.9,0,114.2,22.9,155.8,64.5s64.5,97,64.5,155.8c0,58.9-22.9,114.2-64.5,155.8S712.6,619.5,653.7,619.5z"/>
		<path d="M653.7,178.9c29.7,0,58.6,5.8,85.7,17.3c26.2,11.1,49.8,27,70,47.2s36.1,43.8,47.2,70c11.5,27.2,17.3,56,17.3,85.7
			s-5.8,58.6-17.3,85.7c-11.1,26.2-27,49.8-47.2,70s-43.8,36.1-70,47.2c-27.2,11.5-56,17.3-85.7,17.3s-58.6-5.8-85.7-17.3
			c-26.2-11.1-49.8-27-70-47.2c-20.2-20.2-36.1-43.8-47.2-70c-11.5-27.2-17.3-56-17.3-85.7s5.8-58.6,17.3-85.7
			c11.1-26.2,27-49.8,47.2-70c20.2-20.2,43.8-36.1,70-47.2C595.2,184.7,624,178.9,653.7,178.9 M653.7,178.7
			c-121.8,0-220.5,98.7-220.5,220.5S532,619.7,653.7,619.7s220.5-98.7,220.5-220.5S775.5,178.7,653.7,178.7L653.7,178.7z"/>
	</g>
	<circle class="ecran" :fill="ecran" stroke="black" stroke-width="3" cx="653.7" cy="399.2" r="194.5"/>
</g>
<g id="ecran">
	<text transform="matrix(1 0 0 1 519.1284 375.3531)" >1O:1O</text>
	<text transform="matrix(1 0 0 1 568.4432 267.6079)" >Lun.  24 oct.</text>
	<text transform="matrix(1 0 0 1 594.5101 557.0259)" >TiK•TaK</text>
	
		<use xlink:href="#Chargement_xA0_4"  width="35.9" height="35.9" x="-18" y="-18" transform="matrix(1.2249 0 0 -1.2249 730.2543 464.4361)" style="overflow:visible;"/>
	
		<use xlink:href="#Orb_xA0_-_Gris"  width="66.2" height="72" x="-33.1" y="-36" transform="matrix(0.6409 0 0 -0.6409 569.024 464.4361)" style="overflow:visible;"/>
	
		<use xlink:href="#Puce_xA0_6_xA0_-_Gris"  width="48" height="48" id="XMLID_1_" x="-24" y="-24" transform="matrix(1 0 0 -1 652.1938 464.4356)" style="overflow:visible;"/>
</g>
</svg>

</template>