﻿namespace webApi_Turismo.models.customModels
{
    public class cInEncabezado
    {
        private String idcuenta;
        private String idformapago;
        private decimal descuento;
        private decimal monto;
        private bool state_emited = false;
        private String username;

        public string Idcuenta { get => idcuenta; set => idcuenta = value; }
        public string Idformapago { get => idformapago; set => idformapago = value; }
        public decimal Descuento { get => descuento; set => descuento = value; }
        public decimal Monto { get => monto; set => monto = value; }
        public bool State_emited { get => state_emited; set => state_emited = value; }
        public string Username { get => username; set => username = value; }
    }
}
