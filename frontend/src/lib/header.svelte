<script lang="ts">
    import {
        Styles,
        Collapse,
        NavbarToggler,
        NavbarBrand,
        Nav,
        Navbar,
        NavItem,
        NavLink,
        Dropdown,
        DropdownToggle,
        DropdownMenu,
        DropdownItem,
    } from "@sveltestrap/sveltestrap";

    let isOpen = false;

    function handleUpdate(event) {
        isOpen = event.detail.isOpen;
    }
</script>

<Navbar color="dark" dark expand="md" container={false} class="fixed-top w-100">
    <NavbarBrand href="/">
        <img src="../assets/icon_512x512.png" alt="Logo" width="30" height="30" class="d-inline-block align-text-top me-2" />
        Crying Obsidian
    </NavbarBrand>
    <NavbarToggler on:click={() => (isOpen = !isOpen)} />
    <Collapse {isOpen} navbar expand="md" on:update={handleUpdate}>
        <Nav class="ms-auto" navbar>
            <NavItem>
                <NavLink href="/">Lorem</NavLink>
            </NavItem>
            <NavItem>
                <NavLink href="/"
                    >Ipsum</NavLink
                >
            </NavItem>
            <Dropdown nav inNavbar>
                <DropdownToggle nav caret>Options</DropdownToggle>
                <DropdownMenu end>
                    <DropdownItem>Option 1</DropdownItem>
                    <DropdownItem>Option 2</DropdownItem>
                    <DropdownItem divider />
                    <DropdownItem>Reset</DropdownItem>
                </DropdownMenu>
            </Dropdown>
        </Nav>
    </Collapse>
</Navbar>
