import React from 'react'
import CIcon from '@coreui/icons-react'
import {
  cilDelete,
  cilList,
  cilMoney,
  cilPenAlt,
  cilPrint,
  cilSearch,
  cilSpeedometer,
} from '@coreui/icons'
import { CNavGroup, CNavItem, CNavTitle } from '@coreui/react'

const _nav = [
  {
    component: CNavItem,
    name: 'Dashboard',
    to: '/dashboard',
    icon: <CIcon icon={cilSpeedometer} customClassName="nav-icon" />,
  },
  {
    component: CNavGroup,
    name: 'List Kantor',
    to: '/listkantor',
    icon: <CIcon icon={cilList} customClassName="nav-icon" />,
    items: [
      {
        component: CNavItem,
        name: 'Bandung',
        to: '/listkantor/bandung',
      },
      {
        component: CNavItem,
        name: 'Jakarta',
        to: '/listkantor/jakarta',
      },
      {
        component: CNavItem,
        name: 'Surabaya',
        to: '/listkantor/surabaya',
      },
    ],
  },
  {
    component: CNavItem,
    name: 'Inventaris',
    to: '/inventaris',
    icon: <CIcon icon={cilMoney} customClassName="nav-icon" />,
  },
  {
    component: CNavItem,
    name: 'Input Data Inventaris',
    to: '/inputdatainventaris',
    icon: <CIcon icon={cilPenAlt} customClassName="nav-icon" />,
  },
  {
    component: CNavItem,
    name: 'Hapus Asset',
    to: '/penghapusanasset',
    icon: <CIcon icon={cilDelete} customClassName="nav-icon" />,
  },
  {
    component: CNavItem,
    name: 'Pencarian Asset',
    to: '/pencarianasset',
    icon: <CIcon icon={cilSearch} customClassName="nav-icon" />,
  },
  {
    component: CNavItem,
    name: 'Cetak Report PDF',
    to: '/cetakreport',
    icon: <CIcon icon={cilPrint} customClassName="nav-icon" />,
  },
]

export default _nav
