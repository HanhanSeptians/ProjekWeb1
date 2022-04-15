import React from 'react'

//Dashboard
const Dashboard = React.lazy(() => import('./views/dashboard/Dashboard'))

// List Kantor
const Bandung = React.lazy(() => import('./views/listkantor/Bandung/Bandung'))
const Jakarta = React.lazy(() => import('./views/listkantor/Jakarta/Jakarta'))
const Surabaya = React.lazy(() => import('./views/listkantor/Surabaya/Surabaya'))

// Inventaris
const Inventaris = React.lazy(() => import('./views/inventaris/Inventaris'))

// Input Data Inventaris
const InputData = React.lazy(() => import('./views/input/InputData'))

// Hapus Asset
const PenghapusanAsset = React.lazy(() => import('./views/penghapusanasset/PenghapusanAsset'))

//Pencarian Asset
const PencarianAsset = React.lazy(() => import('./views/pencarianasset/PencarianAsset'))

//Cetak Report PDF
const CetakReport = React.lazy(() => import('./views/cetakreport/CetakReport'))

//Logout
const Logout = React.lazy(() => import('./views/logout/Logout'))




const routes = [
  { path: '/', exact: true, name: 'Home' },
  { path: '/dashboard', name: 'Dashboard', element: Dashboard },

  { path: '/listkantor', name: 'List Kantor', element: Bandung, exact: true },
  { path: '/listkantor/Bandung', name: 'Bandung', element: Bandung },
  { path: '/listkantor/Jakarta', name: 'Jakarta', element: Jakarta },
  { path: '/listkantor/Surabaya', name: 'Surabaya', element: Surabaya },

  { path: '/inventaris', name: 'Inventaris', element: Inventaris },

  { path: '/inputdatainventaris', name: 'Input Data Inventaris', element: InputData },

  { path: '/penghapusanasset', name: 'Hapus Asset', element: PenghapusanAsset},

  { path: '/pencarianasset', name: 'Pencarian Asset', element: PencarianAsset },

  { path: '/cetakreport', name: 'Cetak Report', element: CetakReport },

  { path: '/logout', name: 'Logout', element: Logout },

]

export default routes
